.class Lcom/metamoji/noteanytime/EditorActivity$36;
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

    .line 2817
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$36;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/metamoji/nt/NtUserDefaults;)V
    .locals 2

    .line 2820
    const-string v0, "CommandButtons"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result p1

    .line 2822
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$36;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    sget v1, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_commands_align:I

    invoke-virtual {v0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 2823
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

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

    .line 2817
    check-cast p1, Lcom/metamoji/nt/NtUserDefaults;

    invoke-virtual {p0, p1}, Lcom/metamoji/noteanytime/EditorActivity$36;->invoke(Lcom/metamoji/nt/NtUserDefaults;)V

    return-void
.end method
