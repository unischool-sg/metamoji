.class Lcom/metamoji/ns/direction/NsDirectionManager$21;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager;->closeDocumentDueToUnknownData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1304
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz p1, :cond_0

    .line 1306
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/EditorActivity;->closeDocument()V

    :cond_0
    return-void
.end method
