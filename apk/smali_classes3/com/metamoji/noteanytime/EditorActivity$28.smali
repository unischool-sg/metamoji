.class Lcom/metamoji/noteanytime/EditorActivity$28;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->initControls(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    .line 2542
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$28;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 2546
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$28;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-static {p1}, Lcom/metamoji/noteanytime/EditorActivity;->-$$Nest$mtoggleJumpList(Lcom/metamoji/noteanytime/EditorActivity;)V

    return-void
.end method
