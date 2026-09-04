.class final Lcom/metamoji/ui/dialog/NtDialog$EditorActionListener;
.super Ljava/lang/Object;
.source "NtDialog.kt"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/NtDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EditorActionListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/metamoji/ui/dialog/NtDialog$EditorActionListener;",
        "Landroid/widget/TextView$OnEditorActionListener;",
        "<init>",
        "(Lcom/metamoji/ui/dialog/NtDialog;)V",
        "onEditorAction",
        "",
        "v",
        "Landroid/widget/TextView;",
        "actionId",
        "",
        "event",
        "Landroid/view/KeyEvent;",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/NtDialog;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/dialog/NtDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/metamoji/ui/dialog/NtDialog$EditorActionListener;->this$0:Lcom/metamoji/ui/dialog/NtDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtDialog$EditorActionListener;->this$0:Lcom/metamoji/ui/dialog/NtDialog;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/NtDialog;->access$getMAutoDetectTextView$p(Lcom/metamoji/ui/dialog/NtDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    if-eqz p3, :cond_1

    .line 119
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 v0, 0x42

    if-eq p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 p3, 0xa0

    if-ne p2, p3, :cond_1

    .line 120
    :cond_0
    iget-object p2, p0, Lcom/metamoji/ui/dialog/NtDialog$EditorActionListener;->this$0:Lcom/metamoji/ui/dialog/NtDialog;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p2, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
