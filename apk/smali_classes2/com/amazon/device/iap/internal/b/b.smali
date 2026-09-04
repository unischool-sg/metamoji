.class public Lcom/amazon/device/iap/internal/b/b;
.super Lcom/amazon/android/framework/prompt/SimplePrompt;
.source "FailurePrompt.java"


# static fields
.field private static final a:Ljava/lang/String; = "b"


# instance fields
.field private b:Lcom/amazon/android/framework/context/ContextManager;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private final c:Lcom/amazon/android/framework/prompt/PromptContent;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/android/framework/prompt/PromptContent;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/amazon/android/framework/prompt/SimplePrompt;-><init>(Lcom/amazon/android/framework/prompt/PromptContent;)V

    .line 35
    iput-object p1, p0, Lcom/amazon/device/iap/internal/b/b;->c:Lcom/amazon/android/framework/prompt/PromptContent;

    return-void
.end method


# virtual methods
.method protected doAction()V
    .locals 4

    .line 48
    sget-object v0, Lcom/amazon/device/iap/internal/b/b;->a:Ljava/lang/String;

    const-string v1, "doAction"

    invoke-static {v0, v1}, Lcom/amazon/device/iap/internal/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/amazon/device/iap/internal/b/b;->c:Lcom/amazon/android/framework/prompt/PromptContent;

    invoke-virtual {v0}, Lcom/amazon/android/framework/prompt/PromptContent;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Amazon Appstore required"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/device/iap/internal/b/b;->c:Lcom/amazon/android/framework/prompt/PromptContent;

    invoke-virtual {v0}, Lcom/amazon/android/framework/prompt/PromptContent;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Amazon Appstore Update Required"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 52
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/iap/internal/b/b;->b:Lcom/amazon/android/framework/context/ContextManager;

    invoke-interface {v0}, Lcom/amazon/android/framework/context/ContextManager;->getVisible()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/amazon/device/iap/internal/b/b;->b:Lcom/amazon/android/framework/context/ContextManager;

    invoke-interface {v0}, Lcom/amazon/android/framework/context/ContextManager;->getRoot()Landroid/app/Activity;

    move-result-object v0

    .line 58
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://www.amazon.com/gp/mas/get-appstore/android/ref=mas_mx_mba_iap_dl"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 59
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 61
    sget-object v1, Lcom/amazon/device/iap/internal/b/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in PurchaseItemCommandTask.OnSuccess: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/device/iap/internal/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected getExpirationDurationInSeconds()J
    .locals 2

    const-wide/32 v0, 0x1e13380

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 73
    sget-object v0, Lcom/amazon/device/iap/internal/b/b;->a:Ljava/lang/String;

    return-object v0
.end method
