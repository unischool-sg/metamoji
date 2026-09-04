.class public Lcom/metamoji/nt/NtPasteDataUtil$ModelProp;
.super Ljava/lang/Object;
.source "NtPasteDataUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtPasteDataUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModelProp"
.end annotation


# static fields
.field public static final ATTACHMENTS_OWNER_ATTACHMENTS:Ljava/lang/String; = "attachments"

.field public static final PDUTIL_OWNER_MODELS:Ljava/lang/String; = "models"


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtPasteDataUtil;


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/NtPasteDataUtil;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/metamoji/nt/NtPasteDataUtil$ModelProp;->this$0:Lcom/metamoji/nt/NtPasteDataUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
