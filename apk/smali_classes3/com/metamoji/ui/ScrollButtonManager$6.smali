.class Lcom/metamoji/ui/ScrollButtonManager$6;
.super Ljava/lang/Object;
.source "ScrollButtonManager.java"

# interfaces
.implements Lcom/metamoji/cm/ICmEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/ScrollButtonManager;->layoutButtons(Landroid/widget/RelativeLayout;)V
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
.field final synthetic this$0:Lcom/metamoji/ui/ScrollButtonManager;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/ScrollButtonManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 362
    iput-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$6;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/metamoji/noteanytime/ActionBar$StatusChangedEventArg;)V
    .locals 1

    .line 365
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$6;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {p1}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$fget_hideConditions(Lcom/metamoji/ui/ScrollButtonManager;)I

    move-result p1

    if-nez p1, :cond_0

    .line 366
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$6;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {p1}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$fget_editorPage(Lcom/metamoji/ui/ScrollButtonManager;)Lcom/metamoji/noteanytime/EditorActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$madjustMargins(Lcom/metamoji/ui/ScrollButtonManager;Landroidx/fragment/app/FragmentActivity;)V

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

    .line 362
    check-cast p1, Lcom/metamoji/noteanytime/ActionBar$StatusChangedEventArg;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/ScrollButtonManager$6;->invoke(Lcom/metamoji/noteanytime/ActionBar$StatusChangedEventArg;)V

    return-void
.end method
