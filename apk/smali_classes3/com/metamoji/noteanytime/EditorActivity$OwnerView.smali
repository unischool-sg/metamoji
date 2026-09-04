.class final Lcom/metamoji/noteanytime/EditorActivity$OwnerView;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lcom/metamoji/nt/INtOwnerView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/noteanytime/EditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OwnerView"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addMainView(Lcom/metamoji/df/controller/DfNoteController;)V
    .locals 1

    .line 8024
    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity;->-$$Nest$sfget_instance()Lcom/metamoji/noteanytime/EditorActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8025
    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity;->-$$Nest$sfget_instance()Lcom/metamoji/noteanytime/EditorActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/metamoji/noteanytime/EditorActivity;->-$$Nest$maddMainView(Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/df/controller/DfNoteController;)V

    :cond_0
    return-void
.end method

.method public getAndroidContext()Landroid/content/Context;
    .locals 1

    .line 8036
    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity;->-$$Nest$sfget_instance()Lcom/metamoji/noteanytime/EditorActivity;

    move-result-object v0

    return-object v0
.end method

.method public getEditor()Lcom/metamoji/nt/INtEditor;
    .locals 1

    .line 8049
    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity;->-$$Nest$sfget_instance()Lcom/metamoji/noteanytime/EditorActivity;

    move-result-object v0

    return-object v0
.end method

.method public getViewport()Lcom/metamoji/df/sprite/Viewport;
    .locals 1

    .line 8044
    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity;->-$$Nest$sfget_instance()Lcom/metamoji/noteanytime/EditorActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    return-object v0
.end method
