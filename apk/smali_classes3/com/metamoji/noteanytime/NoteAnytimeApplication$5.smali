.class Lcom/metamoji/noteanytime/NoteAnytimeApplication$5;
.super Ljava/lang/Object;
.source "NoteAnytimeApplication.java"

# interfaces
.implements Lcom/metamoji/video/IAmvHttpClientSource;


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

    .line 405
    iput-object p1, p0, Lcom/metamoji/noteanytime/NoteAnytimeApplication$5;->this$0:Lcom/metamoji/noteanytime/NoteAnytimeApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHttpClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 409
    invoke-static {}, Lcom/metamoji/network/NwHttpClient;->getMediumTimeoutClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
