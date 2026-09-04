.class Lcom/metamoji/mazec/ui/MazecView$20;
.super Lcom/metamoji/mazec/ui/MazecView$PopupMenuHandler;
.source "MazecView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/MazecView;->initDeleteStrokeButton(Lcom/metamoji/mazec/MazecIms;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/MazecView;

.field final synthetic val$ims:Lcom/metamoji/mazec/MazecIms;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/MazecIms;)V
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

    .line 1073
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$20;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    iput-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$20;->val$ims:Lcom/metamoji/mazec/MazecIms;

    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/MazecView$PopupMenuHandler;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    return-void
.end method

.method private disableDeleteBackward()V
    .locals 4

    .line 1110
    sget-object v0, Lcom/metamoji/mazec/BuildOption;->DEVICE_TYPE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceType;->SMARTPHONE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    if-ne v0, v1, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$20;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmButtonBackspace(Lcom/metamoji/mazec/ui/MazecView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1113
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$20;->val$ims:Lcom/metamoji/mazec/MazecIms;

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1114
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView$20;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmDeleteBackwardRestorer(Lcom/metamoji/mazec/ui/MazecView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1115
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView$20;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmDeleteBackwardRestorer(Lcom/metamoji/mazec/ui/MazecView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x4e2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public create(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/ui/PopupMenu;
    .locals 11

    .line 1076
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1077
    new-instance v1, Lcom/metamoji/mazec/ui/PopupMenu;

    .line 1078
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->isLatinLang()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "layout.delete_stroke_popup_e_na"

    goto :goto_0

    :cond_0
    const-string v2, "layout.delete_stroke_popup_na"

    :goto_0
    move-object v3, v2

    const-string v2, "dimen.delete_stroke_image_na_w"

    .line 1079
    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const-string v2, "dimen.delete_stroke_image_na_h"

    .line 1080
    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const-string v2, "dimen.delete_stroke_image_offset_x"

    .line 1081
    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const-string v2, "dimen.delete_stroke_image_offset_y"

    .line 1082
    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const/4 v0, 0x2

    const/4 v2, 0x3

    const/4 v8, 0x1

    filled-new-array {v8, v0, v2}, [I

    move-result-object v9

    const/4 v10, 0x0

    const/4 v8, 0x2

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/metamoji/mazec/ui/PopupMenu;-><init>(Landroid/content/Context;Ljava/lang/String;IIIII[II)V

    return-object v1
.end method

.method public execute(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1101
    :cond_0
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$20;->val$ims:Lcom/metamoji/mazec/MazecIms;

    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->clearStrokes()V

    .line 1102
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/MazecView$20;->disableDeleteBackward()V

    return v0

    .line 1096
    :cond_1
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$20;->val$ims:Lcom/metamoji/mazec/MazecIms;

    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->deleteLastStrokeBlock()V

    .line 1097
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/MazecView$20;->disableDeleteBackward()V

    return v0

    .line 1091
    :cond_2
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$20;->val$ims:Lcom/metamoji/mazec/MazecIms;

    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->deleteLastStroke()V

    .line 1092
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/MazecView$20;->disableDeleteBackward()V

    return v0
.end method
