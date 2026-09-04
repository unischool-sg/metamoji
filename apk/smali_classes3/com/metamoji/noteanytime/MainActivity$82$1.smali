.class Lcom/metamoji/noteanytime/MainActivity$82$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$82;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/MainActivity$82;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$82;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 5951
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$82$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$82;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    .line 5954
    iget-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$82$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$82;

    iget-boolean p1, p1, Lcom/metamoji/noteanytime/MainActivity$82;->val$wait:Z

    if-eqz p1, :cond_0

    .line 5955
    iget-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$82$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$82;

    iget-object p1, p1, Lcom/metamoji/noteanytime/MainActivity$82;->val$resetableEvent:Lcom/metamoji/cm/ResetableEvent;

    invoke-virtual {p1}, Lcom/metamoji/cm/ResetableEvent;->set()V

    :cond_0
    return-void
.end method
