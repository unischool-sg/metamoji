.class public abstract Lcom/amazon/device/iap/internal/b/i;
.super Lcom/amazon/android/framework/task/command/AbstractCommandTask;
.source "KiwiCommand.java"


# static fields
.field private static final a:Ljava/lang/String; = "i"


# instance fields
.field private final b:Lcom/amazon/device/iap/internal/b/e;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;

.field private h:Z

.field private i:Lcom/amazon/device/iap/internal/b/i;

.field private j:Lcom/amazon/device/iap/internal/b/i;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/iap/internal/b/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;-><init>()V

    .line 33
    new-instance v0, Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;

    invoke-direct {v0}, Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/iap/internal/b/i;->g:Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/amazon/device/iap/internal/b/i;->k:Z

    .line 45
    iput-object p1, p0, Lcom/amazon/device/iap/internal/b/i;->b:Lcom/amazon/device/iap/internal/b/e;

    .line 46
    invoke-virtual {p1}, Lcom/amazon/device/iap/internal/b/e;->c()Lcom/amazon/device/iap/model/RequestId;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/RequestId;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/iap/internal/b/i;->c:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/amazon/device/iap/internal/b/i;->d:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/amazon/device/iap/internal/b/i;->e:Ljava/lang/String;

    .line 50
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/amazon/device/iap/internal/b/i;->f:Ljava/util/Map;

    .line 51
    const-string p3, "requestId"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string p1, "sdkVersion"

    const-string p3, "2.0.61.0"

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/amazon/device/iap/internal/b/i;->h:Z

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcom/amazon/device/iap/internal/b/i;->i:Lcom/amazon/device/iap/internal/b/i;

    .line 56
    iput-object p1, p0, Lcom/amazon/device/iap/internal/b/i;->j:Lcom/amazon/device/iap/internal/b/i;

    return-void
.end method

.method private a(Lcom/amazon/android/framework/prompt/PromptContent;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 116
    :cond_0
    new-instance v0, Lcom/amazon/device/iap/internal/b/b;

    invoke-direct {v0, p1}, Lcom/amazon/device/iap/internal/b/b;-><init>(Lcom/amazon/android/framework/prompt/PromptContent;)V

    .line 117
    invoke-static {}, Lcom/amazon/android/Kiwi;->getPromptManager()Lcom/amazon/android/framework/prompt/PromptManager;

    move-result-object p1

    .line 118
    invoke-interface {p1, v0}, Lcom/amazon/android/framework/prompt/PromptManager;->present(Lcom/amazon/android/framework/prompt/Prompt;)V

    return-void
.end method


# virtual methods
.method public a(Z)Lcom/amazon/device/iap/internal/b/i;
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/amazon/device/iap/internal/b/i;->k:Z

    return-object p0
.end method

.method public a(Lcom/amazon/device/iap/internal/b/i;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/amazon/device/iap/internal/b/i;->i:Lcom/amazon/device/iap/internal/b/i;

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/device/iap/internal/b/i;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected abstract a(Lcom/amazon/venezia/command/SuccessResult;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public a_()V
    .locals 0

    .line 211
    invoke-static {p0}, Lcom/amazon/android/Kiwi;->addCommandToCommandTaskPipeline(Lcom/amazon/android/framework/task/command/AbstractCommandTask;)V

    return-void
.end method

.method protected b()Lcom/amazon/device/iap/internal/b/e;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/device/iap/internal/b/i;->b:Lcom/amazon/device/iap/internal/b/e;

    return-object v0
.end method

.method public b(Lcom/amazon/device/iap/internal/b/i;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/amazon/device/iap/internal/b/i;->j:Lcom/amazon/device/iap/internal/b/i;

    return-void
.end method

.method protected b(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lcom/amazon/device/iap/internal/b/i;->h:Z

    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/device/iap/internal/b/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected getCommandData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/amazon/device/iap/internal/b/i;->f:Ljava/util/Map;

    return-object v0
.end method

.method protected getCommandName()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/device/iap/internal/b/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected getCommandVersion()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/amazon/device/iap/internal/b/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected isExecutionNeeded()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final onException(Lcom/amazon/android/framework/exception/KiwiException;)V
    .locals 3

    .line 187
    sget-object v0, Lcom/amazon/device/iap/internal/b/i;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onException: exception = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/android/framework/exception/KiwiException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/device/iap/internal/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v0, "UNHANDLED_EXCEPTION"

    invoke-virtual {p1}, Lcom/amazon/android/framework/exception/KiwiException;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "2.0"

    iget-object v1, p0, Lcom/amazon/device/iap/internal/b/i;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/iap/internal/b/i;->j:Lcom/amazon/device/iap/internal/b/i;

    if-eqz v0, :cond_0

    .line 193
    iget-boolean p1, p0, Lcom/amazon/device/iap/internal/b/i;->k:Z

    invoke-virtual {v0, p1}, Lcom/amazon/device/iap/internal/b/i;->a(Z)Lcom/amazon/device/iap/internal/b/i;

    .line 194
    iget-object p1, p0, Lcom/amazon/device/iap/internal/b/i;->j:Lcom/amazon/device/iap/internal/b/i;

    invoke-virtual {p1}, Lcom/amazon/device/iap/internal/b/i;->a_()V

    return-void

    .line 197
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/device/iap/internal/b/i;->h:Z

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/amazon/device/iap/internal/b/i;->g:Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;

    invoke-virtual {v0, p1}, Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;->map(Lcom/amazon/android/framework/exception/KiwiException;)Lcom/amazon/android/framework/prompt/PromptContent;

    move-result-object p1

    .line 199
    invoke-direct {p0, p1}, Lcom/amazon/device/iap/internal/b/i;->a(Lcom/amazon/android/framework/prompt/PromptContent;)V

    .line 201
    :cond_1
    iget-boolean p1, p0, Lcom/amazon/device/iap/internal/b/i;->k:Z

    if-nez p1, :cond_2

    .line 202
    iget-object p1, p0, Lcom/amazon/device/iap/internal/b/i;->b:Lcom/amazon/device/iap/internal/b/e;

    invoke-virtual {p1}, Lcom/amazon/device/iap/internal/b/e;->b()V

    :cond_2
    return-void
.end method

.method protected final onFailure(Lcom/amazon/venezia/command/FailureResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/amazon/android/framework/exception/KiwiException;
        }
    .end annotation

    .line 154
    sget-object v0, Lcom/amazon/device/iap/internal/b/i;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFailure: result = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/device/iap/internal/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 158
    invoke-interface {p1}, Lcom/amazon/venezia/command/FailureResult;->getExtensionData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "maxVersion"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 159
    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/amazon/device/iap/internal/b/i;->j:Lcom/amazon/device/iap/internal/b/i;

    if-eqz v0, :cond_0

    .line 165
    iget-boolean p1, p0, Lcom/amazon/device/iap/internal/b/i;->k:Z

    invoke-virtual {v0, p1}, Lcom/amazon/device/iap/internal/b/i;->a(Z)Lcom/amazon/device/iap/internal/b/i;

    .line 166
    iget-object p1, p0, Lcom/amazon/device/iap/internal/b/i;->j:Lcom/amazon/device/iap/internal/b/i;

    invoke-virtual {p1}, Lcom/amazon/device/iap/internal/b/i;->a_()V

    return-void

    .line 170
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/device/iap/internal/b/i;->h:Z

    if-eqz v0, :cond_1

    .line 171
    new-instance v0, Lcom/amazon/android/framework/prompt/PromptContent;

    invoke-interface {p1}, Lcom/amazon/venezia/command/FailureResult;->getDisplayableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/venezia/command/FailureResult;->getDisplayableMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/venezia/command/FailureResult;->getButtonLabel()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/amazon/venezia/command/FailureResult;->show()Z

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/amazon/android/framework/prompt/PromptContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 175
    invoke-direct {p0, v0}, Lcom/amazon/device/iap/internal/b/i;->a(Lcom/amazon/android/framework/prompt/PromptContent;)V

    .line 177
    :cond_1
    iget-boolean p1, p0, Lcom/amazon/device/iap/internal/b/i;->k:Z

    if-nez p1, :cond_2

    .line 178
    iget-object p1, p0, Lcom/amazon/device/iap/internal/b/i;->b:Lcom/amazon/device/iap/internal/b/e;

    invoke-virtual {p1}, Lcom/amazon/device/iap/internal/b/e;->b()V

    :cond_2
    return-void
.end method

.method protected final onSuccess(Lcom/amazon/venezia/command/SuccessResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    invoke-interface {p1}, Lcom/amazon/venezia/command/SuccessResult;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "errorMessage"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    sget-object v1, Lcom/amazon/device/iap/internal/b/i;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSuccess: result = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/device/iap/internal/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {v0}, Lcom/amazon/device/iap/internal/util/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/device/iap/internal/b/i;->a(Lcom/amazon/venezia/command/SuccessResult;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 131
    sget-object v0, Lcom/amazon/device/iap/internal/b/i;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error calling onResult: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/device/iap/internal/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/amazon/device/iap/internal/b/i;->i:Lcom/amazon/device/iap/internal/b/i;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Lcom/amazon/device/iap/internal/b/i;->a_()V

    return-void

    .line 138
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/device/iap/internal/b/i;->k:Z

    if-nez v0, :cond_3

    .line 142
    iget-object v0, p0, Lcom/amazon/device/iap/internal/b/i;->b:Lcom/amazon/device/iap/internal/b/e;

    if-eqz p1, :cond_1

    .line 140
    invoke-virtual {v0}, Lcom/amazon/device/iap/internal/b/e;->a()V

    goto :goto_1

    .line 142
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/device/iap/internal/b/e;->b()V

    goto :goto_1

    .line 146
    :cond_2
    iget-boolean p1, p0, Lcom/amazon/device/iap/internal/b/i;->k:Z

    if-nez p1, :cond_3

    .line 147
    iget-object p1, p0, Lcom/amazon/device/iap/internal/b/i;->b:Lcom/amazon/device/iap/internal/b/e;

    invoke-virtual {p1}, Lcom/amazon/device/iap/internal/b/e;->b()V

    :cond_3
    :goto_1
    return-void
.end method
