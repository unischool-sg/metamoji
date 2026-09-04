.class public Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;
.super Ljava/lang/Object;
.source "NsUserPropertyChangedEvent.java"


# instance fields
.field private key:Ljava/lang/String;

.field private userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/NsCollaboUserInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;->userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 26
    iput-object p2, p0, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;->key:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Lcom/metamoji/ns/NsCollaboUserInfo;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;->userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;->key:Ljava/lang/String;

    return-void
.end method

.method public setUserInfo(Lcom/metamoji/ns/NsCollaboUserInfo;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;->userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;->value:Ljava/lang/String;

    return-void
.end method
