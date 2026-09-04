.class Lcom/metamoji/nt/NtTextSearchUtil$1;
.super Ljava/lang/Object;
.source "NtTextSearchUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtTextSearchUtil;->changeCurrentPageAndSetFocusWithNoteController(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchPosition;Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fromModel:Lcom/metamoji/df/model/IModel;

.field final synthetic val$model:Lcom/metamoji/df/model/IModel;

.field final synthetic val$noteController:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$range:Lcom/metamoji/nt/NtTextSearchPosition;

.field final synthetic val$textSearchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;Lcom/metamoji/nt/NtTextSearchPosition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 470
    iput-object p1, p0, Lcom/metamoji/nt/NtTextSearchUtil$1;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    iput-object p2, p0, Lcom/metamoji/nt/NtTextSearchUtil$1;->val$model:Lcom/metamoji/df/model/IModel;

    iput-object p3, p0, Lcom/metamoji/nt/NtTextSearchUtil$1;->val$fromModel:Lcom/metamoji/df/model/IModel;

    iput-object p4, p0, Lcom/metamoji/nt/NtTextSearchUtil$1;->val$textSearchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    iput-object p5, p0, Lcom/metamoji/nt/NtTextSearchUtil$1;->val$range:Lcom/metamoji/nt/NtTextSearchPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 473
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtTextSearchUtil$1$1;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtTextSearchUtil$1$1;-><init>(Lcom/metamoji/nt/NtTextSearchUtil$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    return-void
.end method
