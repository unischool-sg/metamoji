.class Lcom/metamoji/noteanytime/ActionBar$1;
.super Ljava/lang/Object;
.source "ActionBar.java"

# interfaces
.implements Lcom/metamoji/cm/ICmEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/ActionBar;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/ICmEventHandler<",
        "Lcom/metamoji/noteanytime/ActionBarRootLayout$HeightChangedEventArg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/ActionBar;

.field final synthetic val$root:Lcom/metamoji/noteanytime/ActionBarRootLayout;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/ActionBar;Lcom/metamoji/noteanytime/ActionBarRootLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/metamoji/noteanytime/ActionBar$1;->this$0:Lcom/metamoji/noteanytime/ActionBar;

    iput-object p2, p0, Lcom/metamoji/noteanytime/ActionBar$1;->val$root:Lcom/metamoji/noteanytime/ActionBarRootLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/metamoji/noteanytime/ActionBarRootLayout$HeightChangedEventArg;)V
    .locals 1

    .line 73
    iget-object p1, p0, Lcom/metamoji/noteanytime/ActionBar$1;->val$root:Lcom/metamoji/noteanytime/ActionBarRootLayout;

    new-instance v0, Lcom/metamoji/noteanytime/ActionBar$1$1;

    invoke-direct {v0, p0}, Lcom/metamoji/noteanytime/ActionBar$1$1;-><init>(Lcom/metamoji/noteanytime/ActionBar$1;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/noteanytime/ActionBarRootLayout;->post(Ljava/lang/Runnable;)Z

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

    .line 68
    check-cast p1, Lcom/metamoji/noteanytime/ActionBarRootLayout$HeightChangedEventArg;

    invoke-virtual {p0, p1}, Lcom/metamoji/noteanytime/ActionBar$1;->invoke(Lcom/metamoji/noteanytime/ActionBarRootLayout$HeightChangedEventArg;)V

    return-void
.end method
