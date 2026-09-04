.class Lcom/metamoji/noteanytime/ActionBar$1$1;
.super Ljava/lang/Object;
.source "ActionBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/ActionBar$1;->invoke(Lcom/metamoji/noteanytime/ActionBarRootLayout$HeightChangedEventArg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/noteanytime/ActionBar$1;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/ActionBar$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/metamoji/noteanytime/ActionBar$1$1;->this$1:Lcom/metamoji/noteanytime/ActionBar$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/metamoji/noteanytime/ActionBar$1$1;->this$1:Lcom/metamoji/noteanytime/ActionBar$1;

    iget-object v0, v0, Lcom/metamoji/noteanytime/ActionBar$1;->this$0:Lcom/metamoji/noteanytime/ActionBar;

    iget-object v1, p0, Lcom/metamoji/noteanytime/ActionBar$1$1;->this$1:Lcom/metamoji/noteanytime/ActionBar$1;

    iget-object v1, v1, Lcom/metamoji/noteanytime/ActionBar$1;->this$0:Lcom/metamoji/noteanytime/ActionBar;

    invoke-virtual {v1}, Lcom/metamoji/noteanytime/ActionBar;->isHidden()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/metamoji/noteanytime/ActionBar;->-$$Nest$mfireStatusChanged(Lcom/metamoji/noteanytime/ActionBar;Z)V

    return-void
.end method
