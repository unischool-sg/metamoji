.class Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FolderTreeViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 225
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$3;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr p4, v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    sget v0, Lcom/metamoji/ui/cabinet/CabinetDef;->SEPARATOR_SWIPE_MAX_OFF_PATH:I

    int-to-float v0, v0

    cmpl-float p4, p4, v0

    const/4 v0, 0x0

    if-lez p4, :cond_0

    return v0

    .line 232
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr p4, v1

    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->SEPARATOR_SWIPE_MIN_DISTANCE:I

    int-to-float v1, v1

    cmpl-float p4, p4, v1

    if-lez p4, :cond_1

    .line 233
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p4

    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->SEPARATOR_SWIPE_THRESHOLD_VELOCITY:I

    int-to-float v1, v1

    cmpl-float p4, p4, v1

    if-lez p4, :cond_1

    .line 234
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$3;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$mcloseFolderTree(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)V

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    sget p1, Lcom/metamoji/ui/cabinet/CabinetDef;->SEPARATOR_SWIPE_MIN_DISTANCE:I

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_2

    .line 236
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget p2, Lcom/metamoji/ui/cabinet/CabinetDef;->SEPARATOR_SWIPE_THRESHOLD_VELOCITY:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    .line 237
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$3;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$mopenFolderTree(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)V

    :cond_2
    :goto_0
    return v0
.end method
