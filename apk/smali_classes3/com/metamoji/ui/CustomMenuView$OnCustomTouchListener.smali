.class Lcom/metamoji/ui/CustomMenuView$OnCustomTouchListener;
.super Ljava/lang/Object;
.source "CustomMenuView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/CustomMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnCustomTouchListener"
.end annotation


# instance fields
.field mOwner:Lcom/metamoji/ui/CustomMenuView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/CustomMenuView;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Lcom/metamoji/ui/CustomMenuView$OnCustomTouchListener;->mOwner:Lcom/metamoji/ui/CustomMenuView;

    return-void
.end method


# virtual methods
.method dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView$OnCustomTouchListener;->mOwner:Lcom/metamoji/ui/CustomMenuView;

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView$OnCustomTouchListener;->mOwner:Lcom/metamoji/ui/CustomMenuView;

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Lcom/metamoji/ui/CustomMenuView;->-$$Nest$monTouch(Lcom/metamoji/ui/CustomMenuView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
