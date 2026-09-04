.class Lcom/metamoji/ui/library/item/LibraryPageView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LibraryPageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryPageView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryPageView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryPageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView$1;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView$1;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/library/item/LibraryPageView;->onPointerPressed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 164
    const-string p1, "[LibraryPageView] onFling"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView$1;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/library/item/LibraryPageView;->onLongPressed(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView$1;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/library/item/LibraryPageView;->onTapped(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
