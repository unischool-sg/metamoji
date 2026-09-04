.class public abstract Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
.super Ljava/lang/Object;
.source "CsResponseBaseAbstract.java"


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

.field public currentEULAVersion:I

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

.field public requiredEULAVersion:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
