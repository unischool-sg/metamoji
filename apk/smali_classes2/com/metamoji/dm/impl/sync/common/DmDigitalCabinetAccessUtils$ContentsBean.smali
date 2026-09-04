.class public Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;
.super Ljava/lang/Object;
.source "DmDigitalCabinetAccessUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentsBean"
.end annotation


# instance fields
.field public contentsFile:Ljava/io/File;

.field public deadProps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
