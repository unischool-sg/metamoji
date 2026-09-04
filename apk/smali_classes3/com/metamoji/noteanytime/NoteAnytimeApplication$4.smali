.class Lcom/metamoji/noteanytime/NoteAnytimeApplication$4;
.super Ljava/lang/Object;
.source "NoteAnytimeApplication.java"

# interfaces
.implements Lcom/metamoji/network/NwWebDAVRequest$ITempFileCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/NoteAnytimeApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/NoteAnytimeApplication;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/NoteAnytimeApplication;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 393
    iput-object p1, p0, Lcom/metamoji/noteanytime/NoteAnytimeApplication$4;->this$0:Lcom/metamoji/noteanytime/NoteAnytimeApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 397
    invoke-static {p1, p2}, Lcom/metamoji/dm/fw/DmUtils;->createTempFileWithPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
