.class public final synthetic Lcom/metamoji/un/video/UnVideoUtils$Companion$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/nt/NtEditorWindowController;

.field public final synthetic f$1:Lcom/metamoji/cm/CmContext;

.field public final synthetic f$2:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/CmContext;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$$ExternalSyntheticLambda5;->f$0:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p2, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$$ExternalSyntheticLambda5;->f$1:Lcom/metamoji/cm/CmContext;

    iput-object p3, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$$ExternalSyntheticLambda5;->f$2:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$$ExternalSyntheticLambda5;->f$0:Lcom/metamoji/nt/NtEditorWindowController;

    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$$ExternalSyntheticLambda5;->f$1:Lcom/metamoji/cm/CmContext;

    iget-object v2, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$$ExternalSyntheticLambda5;->f$2:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->execVideoFinish$lambda$4$lambda$3$lambda$2(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/CmContext;Landroid/graphics/Bitmap;)V

    return-void
.end method
