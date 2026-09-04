.class Lcom/metamoji/ctold/template/CtTemplateManager$2;
.super Ljava/lang/Object;
.source "CtTemplateManager.java"

# interfaces
.implements Lcom/metamoji/df/controller/SettingsFactory$IFactory;


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


# direct methods
.method constructor <init>(Lcom/metamoji/ctold/template/CtTemplateManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/metamoji/ctold/template/CtTemplateManager$2;->this$0:Lcom/metamoji/ctold/template/CtTemplateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSettings(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/ISettings;
    .locals 1

    .line 149
    new-instance v0, Lcom/metamoji/ctold/template/CtTagTemplateSettings;

    invoke-direct {v0, p1, p2, p3}, Lcom/metamoji/ctold/template/CtTagTemplateSettings;-><init>(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-object v0
.end method
