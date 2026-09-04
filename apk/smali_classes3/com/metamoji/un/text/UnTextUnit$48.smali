.class Lcom/metamoji/un/text/UnTextUnit$48;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Lcom/metamoji/ui/MenuEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit;->appearContextMenuForSpellCheck(Lcom/metamoji/un/text/hotspot/HotSpotLocationForSpellCheck;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnit;

.field final synthetic val$hotspotLoc:Lcom/metamoji/un/text/hotspot/HotSpotLocationForSpellCheck;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/hotspot/HotSpotLocationForSpellCheck;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11598
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$48;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    iput-object p2, p0, Lcom/metamoji/un/text/UnTextUnit$48;->val$hotspotLoc:Lcom/metamoji/un/text/hotspot/HotSpotLocationForSpellCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 11601
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$48;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$fput_visibleContextMenu(Lcom/metamoji/un/text/UnTextUnit;Z)V

    .line 11602
    check-cast p2, Lcom/metamoji/un/text/UnTextUnit$SpellCheckCmdId;

    invoke-virtual {p2}, Lcom/metamoji/un/text/UnTextUnit$SpellCheckCmdId;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    return-void

    .line 11604
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$48;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    iget-object p2, p0, Lcom/metamoji/un/text/UnTextUnit$48;->val$hotspotLoc:Lcom/metamoji/un/text/hotspot/HotSpotLocationForSpellCheck;

    check-cast p3, Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$mreplaceSpellCheckError(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/hotspot/HotSpotLocationForSpellCheck;Ljava/lang/String;)V

    return-void
.end method
