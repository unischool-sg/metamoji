.class public Lcom/metamoji/cs/dc/response/CsInkAmountSyncResponse;
.super Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
.source "CsInkAmountSyncResponse.java"


# instance fields
.field public licenseList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public result:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;-><init>()V

    return-void
.end method
