.class public Lcom/metamoji/nt/NtDocumentSettings$ModelProp;
.super Ljava/lang/Object;
.source "NtDocumentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtDocumentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModelProp"
.end annotation


# static fields
.field public static final FOOTER:Ljava/lang/String; = "footer"

.field public static final FRONT_COVER:Ljava/lang/String; = "frontCover"

.field public static final HEADER:Ljava/lang/String; = "header"

.field public static final NO_FRONT_COVER_ON_PRINTING:Ljava/lang/String; = "noFrontCoverOnPrinting"

.field public static final SHARE_TEMPLATE_DIC:Ljava/lang/String; = "shareTemplateDic"

.field public static final TEXT_UNIT_USE_SYSTEM:Ljava/lang/String; = "useSystemTextSettings"

.field public static final THUMBNAIL:Ljava/lang/String; = "thumbnail"

.field public static final THUMBNAIL_TYPE:Ljava/lang/String; = "thumbnailType"

.field public static final TITLERULE:Ljava/lang/String; = "titleRule"


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtDocumentSettings;


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/NtDocumentSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/metamoji/nt/NtDocumentSettings$ModelProp;->this$0:Lcom/metamoji/nt/NtDocumentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
