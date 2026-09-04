.class public final synthetic Lcom/metamoji/dvm/cs/DvmCloudService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/io/File;

.field public final synthetic f$3:Lcom/metamoji/cs/dc/user/CsDCUserInfo;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/metamoji/cs/dc/user/CsDCUserInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/dvm/cs/DvmCloudService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/dvm/cs/DvmCloudService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/dvm/cs/DvmCloudService$$ExternalSyntheticLambda1;->f$2:Ljava/io/File;

    iput-object p4, p0, Lcom/metamoji/dvm/cs/DvmCloudService$$ExternalSyntheticLambda1;->f$3:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/metamoji/dvm/cs/DvmCloudService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/dvm/cs/DvmCloudService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/dvm/cs/DvmCloudService$$ExternalSyntheticLambda1;->f$2:Ljava/io/File;

    iget-object v3, p0, Lcom/metamoji/dvm/cs/DvmCloudService$$ExternalSyntheticLambda1;->f$3:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/dvm/cs/DvmCloudService;->lambda$executeDistributeMultipleNotesWithParams$0(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Lcom/metamoji/dvm/cs/DvmDistributeClassResult;

    move-result-object v0

    return-object v0
.end method
