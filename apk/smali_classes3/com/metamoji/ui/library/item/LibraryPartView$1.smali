.class Lcom/metamoji/ui/library/item/LibraryPartView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LibraryPartView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryPartView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryPartView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryPartView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPartView$1;->this$0:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPartView$1;->this$0:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/library/item/LibraryPartView;->onLongPressed(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPartView$1;->this$0:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/library/item/LibraryPartView;->onTapped(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
