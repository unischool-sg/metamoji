.class Lcom/metamoji/noteanytime/MainActivity$49;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->doAutoSyncDrive(Ljava/lang/String;Lcom/metamoji/noteanytime/MainActivity$IDoAutoSyncDriveBlock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$driveId:Ljava/lang/String;

.field final synthetic val$runnable:Lcom/metamoji/noteanytime/MainActivity$IDoAutoSyncDriveBlock;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/metamoji/noteanytime/MainActivity$IDoAutoSyncDriveBlock;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3183
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$49;->val$driveId:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$49;->val$runnable:Lcom/metamoji/noteanytime/MainActivity$IDoAutoSyncDriveBlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public syncEnd(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 3187
    iget-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$49;->val$driveId:Ljava/lang/String;

    new-instance v0, Lcom/metamoji/noteanytime/MainActivity$49$1;

    invoke-direct {v0, p0}, Lcom/metamoji/noteanytime/MainActivity$49$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$49;)V

    invoke-static {p1, v0}, Lcom/metamoji/noteanytime/MainActivity;->autoSyncWithDriveId(Ljava/lang/String;Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
