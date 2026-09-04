.class Lcom/metamoji/cs/dc/CsCloudService$24;
.super Ljava/lang/Object;
.source "CsCloudService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$mazecServiceSetting:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1573
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsCloudService$24;->val$mazecServiceSetting:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1576
    invoke-static {}, Lcom/metamoji/nt/NtMazecManager;->getInstance()Lcom/metamoji/nt/NtMazecManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/cs/dc/CsCloudService$24;->val$mazecServiceSetting:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtMazecManager;->updateWorkSettings(Ljava/util/Map;Z)V

    return-void
.end method
