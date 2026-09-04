.class final Lcom/metamoji/un/web/BookmarkSettings$ModelDef;
.super Ljava/lang/Object;
.source "BookmarkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/web/BookmarkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ModelDef"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/web/BookmarkSettings$ModelDef$Bookmark;,
        Lcom/metamoji/un/web/BookmarkSettings$ModelDef$Folder;
    }
.end annotation


# static fields
.field public static final ROOT_FOLDER:Ljava/lang/String; = "rootFolder"

.field public static final VERSION_LATEST:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
