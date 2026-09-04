.class Lcom/metamoji/nt/NtMazecImsManager$8;
.super Ljava/lang/Object;
.source "NtMazecImsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtMazecImsManager;->onShowReceiveResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 365
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/metamoji/noteanytime/EditorActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->setSoftInputDetectable(Z)V

    const/4 v0, 0x0

    .line 366
    invoke-static {v0}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$sfput_duringToggleImeAndMazec(Z)V

    return-void
.end method
