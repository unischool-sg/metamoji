.class Lcom/metamoji/noteanytime/EditorActivity$37;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lcom/metamoji/cm/ICmEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/noteanytime/EditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/ICmEventHandler<",
        "Lcom/metamoji/nt/NtUserDefaults;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2848
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$37;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/metamoji/nt/NtUserDefaults;)V
    .locals 3

    .line 2852
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$37;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget-object p1, p1, Lcom/metamoji/noteanytime/EditorActivity;->_scrollButtonManager:Lcom/metamoji/ui/ScrollButtonManager;

    if-nez p1, :cond_0

    .line 2853
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$37;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    new-instance v0, Lcom/metamoji/ui/ScrollButtonManager;

    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$37;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    sget v2, Lcom/metamoji/noteanytime/R$id;->main:I

    invoke-virtual {v1, v2}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Lcom/metamoji/ui/ScrollButtonManager;-><init>(Landroid/widget/RelativeLayout;)V

    iput-object v0, p1, Lcom/metamoji/noteanytime/EditorActivity;->_scrollButtonManager:Lcom/metamoji/ui/ScrollButtonManager;

    .line 2854
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$37;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget-object p1, p1, Lcom/metamoji/noteanytime/EditorActivity;->_scrollButtonManager:Lcom/metamoji/ui/ScrollButtonManager;

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$37;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/ScrollButtonManager;->bind(Lcom/metamoji/nt/NtNoteController;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 2848
    check-cast p1, Lcom/metamoji/nt/NtUserDefaults;

    invoke-virtual {p0, p1}, Lcom/metamoji/noteanytime/EditorActivity$37;->invoke(Lcom/metamoji/nt/NtUserDefaults;)V

    return-void
.end method
