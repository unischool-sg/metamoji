.class Lcom/metamoji/mazec/ui/MazecView$24;
.super Lcom/metamoji/mazec/ui/MazecView$PopupMenuHandler;
.source "MazecView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/MazecView;->initExpandableSpaceButton(Lcom/metamoji/mazec/MazecIms;Landroid/widget/ImageView;Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/MazecView;

.field final synthetic val$ims:Lcom/metamoji/mazec/MazecIms;

.field final synthetic val$layoutName:Ljava/lang/String;

.field final synthetic val$levels:[I


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/MazecView;Ljava/lang/String;[ILcom/metamoji/mazec/MazecIms;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1235
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$24;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    iput-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$24;->val$layoutName:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/mazec/ui/MazecView$24;->val$levels:[I

    iput-object p4, p0, Lcom/metamoji/mazec/ui/MazecView$24;->val$ims:Lcom/metamoji/mazec/MazecIms;

    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/MazecView$PopupMenuHandler;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    return-void
.end method


# virtual methods
.method public create(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/ui/PopupMenu;
    .locals 11

    .line 1238
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1239
    new-instance v1, Lcom/metamoji/mazec/ui/PopupMenu;

    iget-object v3, p0, Lcom/metamoji/mazec/ui/MazecView$24;->val$layoutName:Ljava/lang/String;

    const-string v2, "dimen.enter_spece_popup_image_na_w"

    .line 1242
    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const-string v2, "dimen.enter_space_popup_image_na_h"

    .line 1243
    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const-string v2, "dimen.enter_space_popup_image_offset_x"

    .line 1244
    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const-string v2, "dimen.enter_space_popup_image_offset_y"

    .line 1245
    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v9, p0, Lcom/metamoji/mazec/ui/MazecView$24;->val$levels:[I

    const/4 v10, 0x0

    const/4 v8, 0x2

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/metamoji/mazec/ui/PopupMenu;-><init>(Landroid/content/Context;Ljava/lang/String;IIIII[II)V

    return-object v1
.end method

.method execute()Z
    .locals 2

    .line 1268
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$24;->val$levels:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/MazecView$24;->execute(I)Z

    move-result v0

    return v0
.end method

.method public execute(I)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0xb

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1260
    :cond_0
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$24;->val$ims:Lcom/metamoji/mazec/MazecIms;

    const-string/jumbo v3, "\u3000"

    invoke-virtual {p1, v1, v3, v0}, Lcom/metamoji/mazec/MazecIms;->onEvent(ILjava/lang/Object;Ljava/lang/Object;)Z

    return v2

    .line 1256
    :cond_1
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$24;->val$ims:Lcom/metamoji/mazec/MazecIms;

    const-string v3, " "

    invoke-virtual {p1, v1, v3, v0}, Lcom/metamoji/mazec/MazecIms;->onEvent(ILjava/lang/Object;Ljava/lang/Object;)Z

    return v2
.end method
