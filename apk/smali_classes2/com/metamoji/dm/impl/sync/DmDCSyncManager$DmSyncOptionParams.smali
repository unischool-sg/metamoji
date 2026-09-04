.class public Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;
.super Ljava/lang/Object;
.source "DmDCSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/dm/impl/sync/DmDCSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DmSyncOptionParams"
.end annotation


# instance fields
.field public driveEntrySyncMode:I

.field public groupIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public specifiedIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;->driveEntrySyncMode:I

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;->specifiedIds:Ljava/util/ArrayList;

    .line 86
    iput-object v0, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;->groupIds:Ljava/util/ArrayList;

    return-void
.end method
