.class public Lcom/metamoji/un/text/hotspot/HotSpotLocationForSpellCheck;
.super Lcom/metamoji/un/text/hotspot/HotSpotLocation;
.source "HotSpotLocationForSpellCheck.java"


# instance fields
.field public suggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/un/text/model/TextRange;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/hotspot/HotSpotLocation;-><init>(Lcom/metamoji/un/text/model/TextRange;)V

    return-void
.end method
