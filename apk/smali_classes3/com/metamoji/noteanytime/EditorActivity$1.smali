.class Lcom/metamoji/noteanytime/EditorActivity$1;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->checkExpirationDate()Z
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

    .line 575
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$1;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 579
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity;->-$$Nest$sfget_instance()Lcom/metamoji/noteanytime/EditorActivity;

    move-result-object p2

    const-class v0, Lcom/metamoji/noteanytime/MainActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 580
    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$1;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {p2, p1}, Lcom/metamoji/noteanytime/EditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 581
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$1;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {p1}, Lcom/metamoji/noteanytime/EditorActivity;->finish()V

    return-void
.end method
