.class public abstract Lcom/metamoji/sd/cs/response/SdResponseResult;
.super Ljava/lang/Object;
.source "SdResponseResult.java"


# instance fields
.field public bodyMessage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public errorCode:I

.field public errorData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public errorMessage:Ljava/lang/String;

.field public errorName:Ljava/lang/String;

.field public httpStatusCode:I

.field public isUnderMaintenance:Z

.field public maintMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/metamoji/sd/cs/response/SdResponseResult;->errorCode:I

    return-void
.end method
