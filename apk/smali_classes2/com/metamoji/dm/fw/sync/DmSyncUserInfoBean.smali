.class public Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;
.super Ljava/lang/Object;
.source "DmSyncUserInfoBean.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = -0xd3175bde4d2174cL


# instance fields
.field private _applicationAuthKey:Ljava/lang/String;

.field private _key:Ljava/lang/Number;

.field private _password:Ljava/lang/String;

.field private _serverUrl:Ljava/lang/String;

.field private _userHomeUrl:Ljava/lang/String;

.field private _userId:Ljava/lang/String;

.field private _userLockToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->_userId:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->_password:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->_serverUrl:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->_userHomeUrl:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->_applicationAuthKey:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->_userLockToken:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->_userId:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->_password:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->_serverUrl:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->_userHomeUrl:Ljava/lang/String;

    .line 69
    iput-object p5, p0, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->_applicationAuthKey:Ljava/lang/String;

    .line 70
    iput-object p6, p0, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->_userLockToken:Ljava/lang/String;

    .line 71
    iput-object p7, p0, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->_key:Ljava/lang/Number;

    return-void
.end method


# virtual methods
.method public clone()Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;
    .locals 2

    .line 131
    new-instance v0, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;

    invoke-direct {v0}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;-><init>()V

    .line 132
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->getApplicationAuthKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->setApplicationAuthKey(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->getUserHomeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->setUserHomeUrl(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->setPassword(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->getServerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->setServerUrl(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->getUserHomeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->setUserHomeUrl(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->setUserId(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->getUserLockToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->setUserLockToken(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->getKey()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->setKey(Ljava/lang/Number;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->clone()Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationAuthKey()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->_applicationAuthKey:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/Number;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->_key:Ljava/lang/Number;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->_password:Ljava/lang/String;

    return-object v0
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->_serverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserHomeUrl()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->_userHomeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->_userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserLockToken()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->_userLockToken:Ljava/lang/String;

    return-object v0
.end method

.method public setApplicationAuthKey(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->_applicationAuthKey:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/Number;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->_key:Ljava/lang/Number;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->_password:Ljava/lang/String;

    return-void
.end method

.method public setServerUrl(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->_serverUrl:Ljava/lang/String;

    return-void
.end method

.method public setUserHomeUrl(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->_userHomeUrl:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->_userId:Ljava/lang/String;

    return-void
.end method

.method public setUserLockToken(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->_userLockToken:Ljava/lang/String;

    return-void
.end method
