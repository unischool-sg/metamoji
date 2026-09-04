.class public Lcom/metamoji/ns/direction/NsReceivedDirection;
.super Ljava/lang/Object;
.source "NsReceivedDirection.java"


# instance fields
.field private mDirection:Ljava/lang/Object;

.field private mRecvInfo:Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;

.field private mTargetHandlerID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsReceivedDirection;->mDirection:Ljava/lang/Object;

    .line 31
    iput-object p2, p0, Lcom/metamoji/ns/direction/NsReceivedDirection;->mRecvInfo:Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;

    .line 32
    iput-object p3, p0, Lcom/metamoji/ns/direction/NsReceivedDirection;->mTargetHandlerID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public direction()Ljava/lang/Object;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsReceivedDirection;->mDirection:Ljava/lang/Object;

    return-object v0
.end method

.method public receiveInfo()Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsReceivedDirection;->mRecvInfo:Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;

    return-object v0
.end method

.method public targetHandlerID()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsReceivedDirection;->mTargetHandlerID:Ljava/lang/String;

    return-object v0
.end method
