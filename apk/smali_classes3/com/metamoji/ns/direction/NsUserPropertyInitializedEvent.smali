.class public Lcom/metamoji/ns/direction/NsUserPropertyInitializedEvent;
.super Ljava/lang/Object;
.source "NsUserPropertyInitializedEvent.java"


# instance fields
.field private _userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboUserInfo;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsUserPropertyInitializedEvent;->_userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    return-void
.end method


# virtual methods
.method public getUserInfo()Lcom/metamoji/ns/NsCollaboUserInfo;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsUserPropertyInitializedEvent;->_userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    return-object v0
.end method

.method public setUserInfo(Lcom/metamoji/ns/NsCollaboUserInfo;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsUserPropertyInitializedEvent;->_userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    return-void
.end method
