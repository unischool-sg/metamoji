.class Lcom/metamoji/ctold/template/CtTemplateManager$1;
.super Ljava/lang/Object;
.source "CtTemplateManager.java"

# interfaces
.implements Lcom/metamoji/df/controller/SettingsFactory$IInitializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ctold/template/CtTemplateManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ctold/template/CtTemplateManager;

.field final synthetic val$systemPresetTags:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/ctold/template/CtTemplateManager;Ljava/util/List;)V
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

    .line 140
    iput-object p1, p0, Lcom/metamoji/ctold/template/CtTemplateManager$1;->this$0:Lcom/metamoji/ctold/template/CtTemplateManager;

    iput-object p2, p0, Lcom/metamoji/ctold/template/CtTemplateManager$1;->val$systemPresetTags:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initSettings(Lcom/metamoji/df/model/IModel;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/metamoji/ctold/template/CtTemplateManager$1;->val$systemPresetTags:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/metamoji/ctold/template/CtTagTemplateSettings;->buildInitModel(Lcom/metamoji/df/model/IModel;Ljava/util/List;)V

    return-void
.end method
