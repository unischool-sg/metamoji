.class Lcom/metamoji/noteanytime/EditorActivity$44;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->returnToCabinet()V
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

    .line 3529
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$44;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 3532
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$44;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/metamoji/noteanytime/EditorActivity;->-$$Nest$mreturnToCabinetInternal(Lcom/metamoji/noteanytime/EditorActivity;Z)V

    return-void
.end method
