.class public Lcom/metamoji/dvm/cs/DvmResultBase;
.super Ljava/lang/Object;
.source "DvmResultBase.java"


# instance fields
.field public errorCode:I

.field public errorMessage:Ljava/lang/String;

.field public responseCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/metamoji/dvm/cs/DvmResultBase;->responseCode:I

    .line 14
    iput p2, p0, Lcom/metamoji/dvm/cs/DvmResultBase;->errorCode:I

    .line 15
    iput-object p3, p0, Lcom/metamoji/dvm/cs/DvmResultBase;->errorMessage:Ljava/lang/String;

    return-void
.end method
