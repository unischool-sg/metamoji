.class public Lcom/metamoji/nt/NtNameTipInfoView$TextViewLayout;
.super Landroid/widget/LinearLayout;
.source "NtNameTipInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtNameTipInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextViewLayout"
.end annotation


# instance fields
.field private _layout:Z

.field final synthetic this$0:Lcom/metamoji/nt/NtNameTipInfoView;


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/NtNameTipInfoView;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/metamoji/nt/NtNameTipInfoView$TextViewLayout;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    .line 59
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/metamoji/nt/NtNameTipInfoView$TextViewLayout;->_layout:Z

    return-void
.end method


# virtual methods
.method public isLayoutDone()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/metamoji/nt/NtNameTipInfoView$TextViewLayout;->_layout:Z

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 68
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 70
    iget-boolean p2, p1, Lcom/metamoji/nt/NtNameTipInfoView$TextViewLayout;->_layout:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 71
    iput-boolean p2, p1, Lcom/metamoji/nt/NtNameTipInfoView$TextViewLayout;->_layout:Z

    .line 73
    iget-object p2, p1, Lcom/metamoji/nt/NtNameTipInfoView$TextViewLayout;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-static {p2, p0}, Lcom/metamoji/nt/NtNameTipInfoView;->-$$Nest$mlayoutLabelWithTextViewLayout(Lcom/metamoji/nt/NtNameTipInfoView;Lcom/metamoji/nt/NtNameTipInfoView$TextViewLayout;)V

    :cond_0
    return-void
.end method
