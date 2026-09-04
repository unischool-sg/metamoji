.class Lcom/metamoji/un/text/UnTextUnit$2;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Lcom/metamoji/cm/IAction1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit;->onTapped(Landroid/graphics/PointF;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/IAction1<",
        "Lcom/metamoji/un/text/hotspot/HotSpotLocationForSpellCheck;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnit;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1237
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$2;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Lcom/metamoji/un/text/hotspot/HotSpotLocationForSpellCheck;)V
    .locals 1

    .line 1240
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$2;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {v0, p1}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$mappearContextMenuForSpellCheck(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/hotspot/HotSpotLocationForSpellCheck;)V

    return-void
.end method

.method public bridge synthetic perform(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1237
    check-cast p1, Lcom/metamoji/un/text/hotspot/HotSpotLocationForSpellCheck;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnit$2;->perform(Lcom/metamoji/un/text/hotspot/HotSpotLocationForSpellCheck;)V

    return-void
.end method
