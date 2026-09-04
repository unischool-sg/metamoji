.class Lcom/metamoji/ui/CustomHelpView$OnCustomTouchListener;
.super Ljava/lang/Object;
.source "CustomHelpView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/CustomHelpView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnCustomTouchListener"
.end annotation


# instance fields
.field mOwner:Lcom/metamoji/ui/CustomHelpView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/CustomHelpView;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/metamoji/ui/CustomHelpView$OnCustomTouchListener;->mOwner:Lcom/metamoji/ui/CustomHelpView;

    return-void
.end method


# virtual methods
.method dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/metamoji/ui/CustomHelpView$OnCustomTouchListener;->mOwner:Lcom/metamoji/ui/CustomHelpView;

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/metamoji/ui/CustomHelpView$OnCustomTouchListener;->mOwner:Lcom/metamoji/ui/CustomHelpView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/ui/CustomHelpView;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
