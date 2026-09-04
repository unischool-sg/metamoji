.class public Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;
.super Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
.source "CsGetUserAndSystemInfoResopnse.java"


# instance fields
.field public currentGroupId:Ljava/lang/String;

.field public dcplan:Ljava/lang/String;

.field public hasCRLicense:Z

.field public licenseInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public readOnlyUser:Z

.field public serverTime:Ljava/lang/Number;

.field public serviceSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public userActionInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public userTransfer:Ljava/lang/String;

.field public userUsageDiskSpace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;-><init>()V

    return-void
.end method
