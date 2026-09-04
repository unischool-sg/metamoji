.class public abstract Lcom/metamoji/nt/NtLinkJump;
.super Ljava/lang/Object;
.source "NtLinkJump.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtLinkJump$Type;
    }
.end annotation


# static fields
.field public static final MMJNT_NOTE_ANYTIME_CATEGORY_NOTES:Ljava/lang/String; = "notes"

.field public static final MMJNT_NOTE_ANYTIME_CATEGORY_PAGES:Ljava/lang/String; = "pages"

.field public static final MMJNT_NOTE_ANYTIME_CATEGORY_ROOT:Ljava/lang/String; = "/"

.field public static final MMJNT_NOTE_ANYTIME_PARAM_OFFSET:Ljava/lang/String; = "offset"

.field public static final MMJNT_NOTE_ANYTIME_PARAM_SCALE:Ljava/lang/String; = "scale"

.field public static final MMJNT_NOTE_ANYTIME_PARAM_SIZE:Ljava/lang/String; = "size"

.field public static final MMJNT_NOTE_ANYTIME_PARAM_TYPE:Ljava/lang/String; = "type"

.field public static final MMJNT_NOTE_ANYTIME_SCHEME:Ljava/lang/String; = "noteanytime"

.field public static final MMJNT_PAGE_LINK_THUMBNAIL_SIZE:I = 0x50


# instance fields
.field private m_linkJumpType:Lcom/metamoji/nt/NtLinkJump$Type;

.field private m_thumbModel:Lcom/metamoji/df/model/IModel;

.field private m_thumbnail:Lcom/metamoji/cm/Blob;

.field private m_thumbnailModified:Z

.field private m_url:Landroid/net/Uri;


# direct methods
.method protected constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/metamoji/nt/NtLinkJump;->m_url:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 171
    iput-object p1, p0, Lcom/metamoji/nt/NtLinkJump;->m_thumbnail:Lcom/metamoji/cm/Blob;

    .line 172
    iput-object p1, p0, Lcom/metamoji/nt/NtLinkJump;->m_thumbModel:Lcom/metamoji/df/model/IModel;

    const/4 p1, 0x0

    .line 173
    iput-boolean p1, p0, Lcom/metamoji/nt/NtLinkJump;->m_thumbnailModified:Z

    .line 174
    sget-object p1, Lcom/metamoji/nt/NtLinkJump$Type;->Generic:Lcom/metamoji/nt/NtLinkJump$Type;

    iput-object p1, p0, Lcom/metamoji/nt/NtLinkJump;->m_linkJumpType:Lcom/metamoji/nt/NtLinkJump$Type;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/nt/NtLinkJump;->m_url:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 182
    iput-object p1, p0, Lcom/metamoji/nt/NtLinkJump;->m_thumbnail:Lcom/metamoji/cm/Blob;

    .line 183
    iput-object p1, p0, Lcom/metamoji/nt/NtLinkJump;->m_thumbModel:Lcom/metamoji/df/model/IModel;

    const/4 p1, 0x0

    .line 184
    iput-boolean p1, p0, Lcom/metamoji/nt/NtLinkJump;->m_thumbnailModified:Z

    .line 185
    sget-object p1, Lcom/metamoji/nt/NtLinkJump$Type;->Generic:Lcom/metamoji/nt/NtLinkJump$Type;

    iput-object p1, p0, Lcom/metamoji/nt/NtLinkJump;->m_linkJumpType:Lcom/metamoji/nt/NtLinkJump$Type;

    return-void
.end method

.method public static linkJumpWithURL(Landroid/net/Uri;)Lcom/metamoji/nt/NtJumpLocation;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 77
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 78
    const-string v2, "noteanytime"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 85
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    const/4 v2, 0x0

    .line 87
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 86
    const-string v5, "pages"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 89
    new-instance v0, Lcom/metamoji/nt/NtJumpLocation;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtJumpLocation;-><init>(Landroid/net/Uri;)V

    return-object v0

    .line 96
    :cond_1
    const-string v4, "notes"

    .line 97
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x4

    if-lt v2, v4, :cond_2

    .line 101
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    new-instance v0, Lcom/metamoji/nt/NtJumpLocation;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtJumpLocation;-><init>(Landroid/net/Uri;)V

    :cond_2
    return-object v0

    .line 122
    :cond_3
    new-instance v0, Lcom/metamoji/nt/NtJumpLocation;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtJumpLocation;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method

.method public static linkJumpWithURLString(Ljava/lang/String;)Lcom/metamoji/nt/NtJumpLocation;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 163
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/nt/NtLinkJump;->linkJumpWithURL(Landroid/net/Uri;)Lcom/metamoji/nt/NtJumpLocation;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getLinkJumpType()Lcom/metamoji/nt/NtLinkJump$Type;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/metamoji/nt/NtLinkJump;->m_linkJumpType:Lcom/metamoji/nt/NtLinkJump$Type;

    return-object v0
.end method

.method public getThumbModel()Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/metamoji/nt/NtLinkJump;->m_thumbModel:Lcom/metamoji/df/model/IModel;

    return-object v0
.end method

.method public getThumbnail()Lcom/metamoji/cm/Blob;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/metamoji/nt/NtLinkJump;->m_thumbnail:Lcom/metamoji/cm/Blob;

    return-object v0
.end method

.method public hasMemoryLocation(Lcom/metamoji/nt/NtNoteController;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isEqualToURL(Lcom/metamoji/nt/NtLinkJump;)Z
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/metamoji/nt/NtLinkJump;->m_url:Landroid/net/Uri;

    iget-object p1, p1, Lcom/metamoji/nt/NtLinkJump;->m_url:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public performJump(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtCommandManager;)Z
    .locals 1

    .line 217
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    iget-object v0, p0, Lcom/metamoji/nt/NtLinkJump;->m_url:Landroid/net/Uri;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 218
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public readyThumbModelWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 236
    iget-boolean v0, p0, Lcom/metamoji/nt/NtLinkJump;->m_thumbnailModified:Z

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/metamoji/nt/NtLinkJump;->m_thumbModel:Lcom/metamoji/df/model/IModel;

    return-object p1

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtLinkJump;->m_thumbnail:Lcom/metamoji/cm/Blob;

    .line 245
    iget-object v1, p0, Lcom/metamoji/nt/NtLinkJump;->m_thumbModel:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    .line 240
    const-string v0, "map"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/nt/NtLinkJump;->m_thumbModel:Lcom/metamoji/df/model/IModel;

    .line 242
    :cond_1
    iget-object p1, p0, Lcom/metamoji/nt/NtLinkJump;->m_thumbModel:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v0, "v"

    iget-object v1, p0, Lcom/metamoji/nt/NtLinkJump;->m_thumbnail:Lcom/metamoji/cm/Blob;

    invoke-interface {p1, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    const/4 p1, 0x0

    .line 243
    iput-boolean p1, p0, Lcom/metamoji/nt/NtLinkJump;->m_thumbnailModified:Z

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    const/4 p1, 0x0

    .line 246
    iput-object p1, p0, Lcom/metamoji/nt/NtLinkJump;->m_thumbModel:Lcom/metamoji/df/model/IModel;

    .line 249
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/metamoji/nt/NtLinkJump;->m_thumbModel:Lcom/metamoji/df/model/IModel;

    return-object p1
.end method

.method public setLinkJumpType(Lcom/metamoji/nt/NtLinkJump$Type;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/metamoji/nt/NtLinkJump;->m_linkJumpType:Lcom/metamoji/nt/NtLinkJump$Type;

    return-void
.end method

.method public setThumbModel(Lcom/metamoji/df/model/IModel;)V
    .locals 1

    .line 147
    iput-object p1, p0, Lcom/metamoji/nt/NtLinkJump;->m_thumbModel:Lcom/metamoji/df/model/IModel;

    .line 149
    const-string/jumbo v0, "v"

    .line 150
    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v0

    .line 151
    iput-object v0, p0, Lcom/metamoji/nt/NtLinkJump;->m_thumbnail:Lcom/metamoji/cm/Blob;

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lcom/metamoji/nt/NtLinkJump;->m_thumbnailModified:Z

    .line 153
    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->purgeMemory(Z)V

    return-void
.end method

.method public setThumbnail(Lcom/metamoji/cm/Blob;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/metamoji/nt/NtLinkJump;->m_thumbnail:Lcom/metamoji/cm/Blob;

    const/4 p1, 0x1

    .line 139
    iput-boolean p1, p0, Lcom/metamoji/nt/NtLinkJump;->m_thumbnailModified:Z

    return-void
.end method

.method public showJumpErrorDialog()V
    .locals 3

    .line 223
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 224
    sget v1, Lcom/metamoji/noteanytime/R$string;->LinkJump_Msg_Error_Title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 225
    sget v1, Lcom/metamoji/noteanytime/R$string;->LinkJump_Msg_Error_Message:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 226
    sget v1, Lcom/metamoji/noteanytime/R$string;->Msg_OK:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 227
    new-instance v1, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {v1, v0}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 228
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "showJumpErrorDialog"

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public toURLString()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/metamoji/nt/NtLinkJump;->m_url:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
