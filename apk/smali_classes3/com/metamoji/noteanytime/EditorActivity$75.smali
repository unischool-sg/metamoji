.class Lcom/metamoji/noteanytime/EditorActivity$75;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lcom/metamoji/ui/MenuEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->showActionMenu(Ljava/util/ArrayList;Landroid/view/View;Lcom/metamoji/ui/CustomMenuView$MenuDirection;ZLcom/metamoji/noteanytime/EditorActivity$Completion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity;

.field final synthetic val$completion:Lcom/metamoji/noteanytime/EditorActivity$Completion;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/noteanytime/EditorActivity$Completion;)V
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

    .line 7368
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$75;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$75;->val$completion:Lcom/metamoji/noteanytime/EditorActivity$Completion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 7371
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$75;->val$completion:Lcom/metamoji/noteanytime/EditorActivity$Completion;

    invoke-interface {p1, p2}, Lcom/metamoji/noteanytime/EditorActivity$Completion;->action(Ljava/lang/Object;)V

    return-void
.end method
