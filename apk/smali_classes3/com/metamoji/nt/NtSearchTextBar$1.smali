.class Lcom/metamoji/nt/NtSearchTextBar$1;
.super Ljava/lang/Object;
.source "NtSearchTextBar.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtSearchTextBar;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtSearchTextBar;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtSearchTextBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/metamoji/nt/NtSearchTextBar$1;->this$0:Lcom/metamoji/nt/NtSearchTextBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x3

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 79
    iget-object p1, p0, Lcom/metamoji/nt/NtSearchTextBar$1;->this$0:Lcom/metamoji/nt/NtSearchTextBar;

    invoke-static {p1}, Lcom/metamoji/nt/NtSearchTextBar;->-$$Nest$mhandleEditorAction(Lcom/metamoji/nt/NtSearchTextBar;)V

    return v0

    :cond_0
    if-eqz p3, :cond_2

    .line 82
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x42

    if-ne p1, p2, :cond_2

    .line 85
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 87
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 88
    iget-object p1, p0, Lcom/metamoji/nt/NtSearchTextBar$1;->this$0:Lcom/metamoji/nt/NtSearchTextBar;

    invoke-static {p1}, Lcom/metamoji/nt/NtSearchTextBar;->-$$Nest$mhandleEditorAction(Lcom/metamoji/nt/NtSearchTextBar;)V

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
