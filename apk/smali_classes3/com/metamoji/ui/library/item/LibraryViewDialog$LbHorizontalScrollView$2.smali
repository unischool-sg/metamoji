.class Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LibraryViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;-><init>(Landroid/content/Context;Lcom/metamoji/ui/library/item/LibraryViewDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final VSCROLL_THRESHOLD:F

.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2022
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$2;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/high16 p1, 0x40a00000    # 5.0f

    .line 2024
    iput p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$2;->VSCROLL_THRESHOLD:F

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 2029
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 2030
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    const/high16 p1, 0x40a00000    # 5.0f

    .line 2031
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
