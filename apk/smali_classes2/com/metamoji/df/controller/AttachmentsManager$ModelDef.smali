.class public Lcom/metamoji/df/controller/AttachmentsManager$ModelDef;
.super Ljava/lang/Object;
.source "AttachmentsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/controller/AttachmentsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModelDef"
.end annotation


# static fields
.field public static final BLOB:Ljava/lang/String; = "$blob"

.field public static final FILENAME:Ljava/lang/String; = "$filename"

.field public static final MIMETYPE:Ljava/lang/String; = "$mimetype"

.field public static final MIMETYPE_TYPO:Ljava/lang/String; = "$mimeType"

.field public static final OWNER_ATTACHMENTS:Ljava/lang/String; = "attachments"


# instance fields
.field final synthetic this$0:Lcom/metamoji/df/controller/AttachmentsManager;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/AttachmentsManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/metamoji/df/controller/AttachmentsManager$ModelDef;->this$0:Lcom/metamoji/df/controller/AttachmentsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
