.class Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog$4;
.super Ljava/lang/Object;
.source "ScNumInputBoxDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;

.field final synthetic val$layout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;Landroid/widget/LinearLayout;)V
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

    .line 196
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog$4;->this$0:Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog$4;->val$layout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 200
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog$4$1;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog$4$1;-><init>(Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog$4;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    .line 207
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog$4;->val$layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog$4;->this$0:Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;

    invoke-static {v1}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->-$$Nest$fget_globalLayoutListener(Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
