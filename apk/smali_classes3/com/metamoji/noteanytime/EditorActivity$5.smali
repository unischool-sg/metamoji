.class Lcom/metamoji/noteanytime/EditorActivity$5;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lcom/metamoji/cm/ICmEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/ICmEventHandler<",
        "Lcom/metamoji/noteanytime/ActionBar$StatusChangedEventArg;",
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

    .line 756
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$5;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/metamoji/noteanytime/ActionBar$StatusChangedEventArg;)V
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$5;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-static {v0, p1}, Lcom/metamoji/noteanytime/EditorActivity;->-$$Nest$monTopAppBarHeightChanged(Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/noteanytime/ActionBar$StatusChangedEventArg;)V

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

    .line 756
    check-cast p1, Lcom/metamoji/noteanytime/ActionBar$StatusChangedEventArg;

    invoke-virtual {p0, p1}, Lcom/metamoji/noteanytime/EditorActivity$5;->invoke(Lcom/metamoji/noteanytime/ActionBar$StatusChangedEventArg;)V

    return-void
.end method
