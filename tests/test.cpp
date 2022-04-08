#include <gtest/gtest.h>
#include <gmock/gmock.h>
#include <Account.h>
#include <Transaction.h>


TEST(Banking, Account1)
{
	Account a1(1, 1000);
	EXPECT_EQ(a1.GetBalance(), 1000);
}

TEST(Banking, Account2)
{
	Account a1(1, 1000);
	a1.Lock();
	a1.ChangeBalance(1);
	a1.Unlock();
	int balance = a1.GetBalance();
	EXPECT_EQ(balance, 1001);
}

/*class MockAccount: public Account {
	public:
		MOCK_METHOD0(GetBalance, int());
		MOCK_METHOD1(ChangeBalance, void(int));
};

TEST(Banking, Transaction)
{
	MockAccount account;
	EXPECT_CALL(account, ChangeBalance(1)).Times(::testing::AtLeast(1));
	Transaction t1;
	t1.Credit(account, 1);
}

int main(int argc, char *argv[])
{
	::testing::InitGoogleTest(&argc, argv);
	return RUN_ALL_TESTS();
}*/
