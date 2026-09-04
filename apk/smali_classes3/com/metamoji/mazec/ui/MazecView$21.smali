.class Lcom/metamoji/mazec/ui/MazecView$21;
.super Lcom/metamoji/mazec/ui/MazecView$PopupMenuHandler;
.source "MazecView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/MazecView;->initEnterConvertButton(Lcom/metamoji/mazec/MazecIms;)V
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

    .line 1133
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$21;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    iput-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$21;->val$ims:Lcom/metamoji/mazec/MazecIms;

    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/MazecView$PopupMenuHandler;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    return-void
.end method


# virtual methods
.method public create(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/ui/PopupMenu;
    .locals 11

    .line 1136
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1137
    new-instance v1, Lcom/metamoji/mazec/ui/PopupMenu;

    const-string v2, "dimen.enter_convert_stroke_image_na_w"

    .line 1139
    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const-string v2, "dimen.enter_convert_stroke_image_na_h"

    .line 1140
    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const-string v2, "dimen.enter_convert_stroke_image_offset_x"

    .line 1141
    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const-string v2, "dimen.enter_convert_stroke_image_offset_y"

    .line 1142
    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const/4 v0, 0x1

    const/4 v2, 0x2

    filled-new-array {v0, v2}, [I

    move-result-object v9

    const/4 v10, 0x0

    const-string v3, "layout.enter_convert_stroke_popup_na"

    const/4 v8, 0x2

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/metamoji/mazec/ui/PopupMenu;-><init>(Landroid/content/Context;Ljava/lang/String;IIIII[II)V

    return-object v1
.end method

.method public execute(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1156
    :cond_0
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$21;->val$ims:Lcom/metamoji/mazec/MazecIms;

    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->commitStrokes()V

    return v0

    .line 1152
    :cond_1
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$21;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmCnvCandidatesBar(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->commitCurrentCandidate()Z

    return v0
.end method
