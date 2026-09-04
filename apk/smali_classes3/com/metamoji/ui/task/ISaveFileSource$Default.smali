.class public final Lcom/metamoji/ui/task/ISaveFileSource$Default;
.super Ljava/lang/Object;
.source "SaveTypedFileTask.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/task/ISaveFileSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/metamoji/ui/task/ISaveFileSource$Default;",
        "",
        "<init>",
        "()V",
        "messageTitleId",
        "",
        "positiveMessageId",
        "getPositiveMessageId",
        "()I",
        "negativeMessageId",
        "getNegativeMessageId",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/metamoji/ui/task/ISaveFileSource$Default;

.field public static final messageTitleId:I

.field private static final negativeMessageId:I

.field private static final positiveMessageId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/ui/task/ISaveFileSource$Default;

    invoke-direct {v0}, Lcom/metamoji/ui/task/ISaveFileSource$Default;-><init>()V

    sput-object v0, Lcom/metamoji/ui/task/ISaveFileSource$Default;->INSTANCE:Lcom/metamoji/ui/task/ISaveFileSource$Default;

    .line 31
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_FileSave_Succeeded:I

    sput v0, Lcom/metamoji/ui/task/ISaveFileSource$Default;->positiveMessageId:I

    .line 32
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_FileSave_Failed:I

    sput v0, Lcom/metamoji/ui/task/ISaveFileSource$Default;->negativeMessageId:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNegativeMessageId()I
    .locals 1

    .line 32
    sget v0, Lcom/metamoji/ui/task/ISaveFileSource$Default;->negativeMessageId:I

    return v0
.end method

.method public final getPositiveMessageId()I
    .locals 1

    .line 31
    sget v0, Lcom/metamoji/ui/task/ISaveFileSource$Default;->positiveMessageId:I

    return v0
.end method
