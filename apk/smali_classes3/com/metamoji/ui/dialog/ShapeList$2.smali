.class Lcom/metamoji/ui/dialog/ShapeList$2;
.super Ljava/lang/Object;
.source "ShapeList.java"

# interfaces
.implements Lcom/metamoji/ui/common/UiShapeSelectionView$IShapeSelected;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/ShapeList;->initDlgValues()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/ShapeList;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/ShapeList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 189
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ShapeList$2;->this$0:Lcom/metamoji/ui/dialog/ShapeList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShapeSelected(I)V
    .locals 12

    .line 195
    const-string/jumbo v0, "style"

    const-string/jumbo v1, "storageFile"

    const-string v2, "default"

    const-string v3, "end"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "shape/com.metamoji.noteanytime.shape.id%3d.product"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 197
    iget-object v5, p0, Lcom/metamoji/ui/dialog/ShapeList$2;->this$0:Lcom/metamoji/ui/dialog/ShapeList;

    invoke-virtual {v5, v4}, Lcom/metamoji/ui/dialog/ShapeList;->parseSystemItem(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    .line 203
    :cond_0
    const-string v5, "jsonDic"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 204
    const-string/jumbo v6, "tempDir"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 209
    :try_start_0
    const-string v9, "p_parts"

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 210
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 212
    check-cast v5, Ljava/util/Map;

    .line 215
    new-instance v9, Ljava/io/File;

    const-string v10, "partFile"

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v9, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v9

    .line 225
    :cond_1
    sget-object v5, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->TRIANGLE_1:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    move v9, v7

    .line 226
    :goto_0
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->values()[Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    move-result-object v10

    array-length v10, v10

    if-ge v9, v10, :cond_3

    .line 227
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->values()[Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    move-result-object v10

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->intValue()I

    move-result v10

    if-ne v10, p1, :cond_2

    .line 228
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->values()[Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    move-result-object v5

    aget-object v5, v5, v9

    goto :goto_1

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 233
    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/metamoji/ui/UIUtils;->isLineArrow(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 234
    iget-object v2, p0, Lcom/metamoji/ui/dialog/ShapeList$2;->this$0:Lcom/metamoji/ui/dialog/ShapeList;

    iget-object v2, v2, Lcom/metamoji/ui/dialog/ShapeList;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iput-boolean v6, v2, Lcom/metamoji/nt/share/NtPenStyle;->hasArrow:Z

    .line 235
    iget-object v2, p0, Lcom/metamoji/ui/dialog/ShapeList$2;->this$0:Lcom/metamoji/ui/dialog/ShapeList;

    iget-object v2, v2, Lcom/metamoji/ui/dialog/ShapeList;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iput-boolean v7, v2, Lcom/metamoji/nt/share/NtPenStyle;->hasFill:Z

    .line 236
    sget-object v2, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->LINE_ARROW:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->intValue()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-static {p1}, Lcom/metamoji/ui/UIUtils;->getArrowStyle(I)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object p1

    .line 237
    iget-object v2, p0, Lcom/metamoji/ui/dialog/ShapeList$2;->this$0:Lcom/metamoji/ui/dialog/ShapeList;

    iget-object v2, v2, Lcom/metamoji/ui/dialog/ShapeList;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget-object v3, p1, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    iput-object v3, v2, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    .line 238
    iget-object v2, p0, Lcom/metamoji/ui/dialog/ShapeList$2;->this$0:Lcom/metamoji/ui/dialog/ShapeList;

    iget-object v2, v2, Lcom/metamoji/ui/dialog/ShapeList;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget-object p1, p1, Lcom/metamoji/nt/share/NtPenStyle;->arrowKinds:Ljava/lang/String;

    iput-object p1, v2, Lcom/metamoji/nt/share/NtPenStyle;->arrowKinds:Ljava/lang/String;

    goto :goto_2

    .line 240
    :cond_4
    invoke-static {v5}, Lcom/metamoji/ui/UIUtils;->isShapeFlowChartArrow(Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;)Z

    move-result p1

    .line 247
    iget-object v5, p0, Lcom/metamoji/ui/dialog/ShapeList$2;->this$0:Lcom/metamoji/ui/dialog/ShapeList;

    if-eqz p1, :cond_5

    .line 241
    iget-object p1, v5, Lcom/metamoji/ui/dialog/ShapeList;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iput-boolean v6, p1, Lcom/metamoji/nt/share/NtPenStyle;->hasArrow:Z

    .line 242
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeList$2;->this$0:Lcom/metamoji/ui/dialog/ShapeList;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/ShapeList;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iput-boolean v7, p1, Lcom/metamoji/nt/share/NtPenStyle;->hasFill:Z

    .line 243
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeList$2;->this$0:Lcom/metamoji/ui/dialog/ShapeList;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/ShapeList;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iput-object v3, p1, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    .line 244
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeList$2;->this$0:Lcom/metamoji/ui/dialog/ShapeList;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/ShapeList;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iput-object v2, p1, Lcom/metamoji/nt/share/NtPenStyle;->arrowKinds:Ljava/lang/String;

    goto :goto_2

    .line 247
    :cond_5
    iget-object p1, v5, Lcom/metamoji/ui/dialog/ShapeList;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iput-boolean v7, p1, Lcom/metamoji/nt/share/NtPenStyle;->hasArrow:Z

    .line 248
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeList$2;->this$0:Lcom/metamoji/ui/dialog/ShapeList;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/ShapeList;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iput-boolean v6, p1, Lcom/metamoji/nt/share/NtPenStyle;->hasFill:Z

    .line 251
    :goto_2
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeList$2;->this$0:Lcom/metamoji/ui/dialog/ShapeList;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/ShapeList;->m_context:Lcom/metamoji/cm/CmContext;

    invoke-virtual {p1, v1, v8}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 252
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeList$2;->this$0:Lcom/metamoji/ui/dialog/ShapeList;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/ShapeList;->m_context:Lcom/metamoji/cm/CmContext;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeList$2;->this$0:Lcom/metamoji/ui/dialog/ShapeList;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/ShapeList;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 253
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 255
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/dialog/ShapeList$2$1;

    invoke-direct {v1, p0, p1, v4}, Lcom/metamoji/ui/dialog/ShapeList$2$1;-><init>(Lcom/metamoji/ui/dialog/ShapeList$2;Lcom/metamoji/nt/NtEditorWindowController;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    .line 268
    :cond_6
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeList$2;->this$0:Lcom/metamoji/ui/dialog/ShapeList;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/ShapeList;->dismiss()V

    return-void

    :catchall_0
    move-exception v5

    .line 225
    sget-object v9, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->TRIANGLE_1:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    move v10, v7

    .line 226
    :goto_3
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->values()[Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    move-result-object v11

    array-length v11, v11

    if-ge v10, v11, :cond_8

    .line 227
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->values()[Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    move-result-object v11

    aget-object v11, v11, v10

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->intValue()I

    move-result v11

    if-ne v11, p1, :cond_7

    .line 228
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->values()[Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    move-result-object v9

    aget-object v9, v9, v10

    goto :goto_4

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 233
    :cond_8
    :goto_4
    invoke-static {p1}, Lcom/metamoji/ui/UIUtils;->isLineArrow(I)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 234
    iget-object v2, p0, Lcom/metamoji/ui/dialog/ShapeList$2;->this$0:Lcom/metamoji/ui/dialog/ShapeList;

    iget-object v2, v2, Lcom/metamoji/ui/dialog/ShapeList;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iput-boolean v6, v2, Lcom/metamoji/nt/share/NtPenStyle;->hasArrow:Z

    .line 235
    iget-object v2, p0, Lcom/metamoji/ui/dialog/ShapeList$2;->this$0:Lcom/metamoji/ui/dialog/ShapeList;

    iget-object v2, v2, Lcom/metamoji/ui/dialog/ShapeList;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iput-boolean v7, v2, Lcom/metamoji/nt/share/NtPenStyle;->hasFill:Z

    .line 236
    sget-object v2, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->LINE_ARROW:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->intValue()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-static {p1}, Lcom/metamoji/ui/UIUtils;->getArrowStyle(I)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object p1

    .line 237
    iget-object v2, p0, Lcom/metamoji/ui/dialog/ShapeList$2;->this$0:Lcom/metamoji/ui/dialog/ShapeList;

    iget-object v2, v2, Lcom/metamoji/ui/dialog/ShapeList;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget-object v3, p1, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    iput-object v3, v2, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    .line 238
    iget-object v2, p0, Lcom/metamoji/ui/dialog/ShapeList$2;->this$0:Lcom/metamoji/ui/dialog/ShapeList;

    iget-object v2, v2, Lcom/metamoji/ui/dialog/ShapeList;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget-object p1, p1, Lcom/metamoji/nt/share/NtPenStyle;->arrowKinds:Ljava/lang/String;

    iput-object p1, v2, Lcom/metamoji/nt/share/NtPenStyle;->arrowKinds:Ljava/lang/String;

    goto :goto_5

    .line 240
    :cond_9
    invoke-static {v9}, Lcom/metamoji/ui/UIUtils;->isShapeFlowChartArrow(Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;)Z

    move-result p1

    .line 247
    iget-object v9, p0, Lcom/metamoji/ui/dialog/ShapeList$2;->this$0:Lcom/metamoji/ui/dialog/ShapeList;

    if-eqz p1, :cond_a

    .line 241
    iget-object p1, v9, Lcom/metamoji/ui/dialog/ShapeList;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iput-boolean v6, p1, Lcom/metamoji/nt/share/NtPenStyle;->hasArrow:Z

    .line 242
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeList$2;->this$0:Lcom/metamoji/ui/dialog/ShapeList;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/ShapeList;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iput-boolean v7, p1, Lcom/metamoji/nt/share/NtPenStyle;->hasFill:Z

    .line 243
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeList$2;->this$0:Lcom/metamoji/ui/dialog/ShapeList;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/ShapeList;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iput-object v3, p1, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    .line 244
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeList$2;->this$0:Lcom/metamoji/ui/dialog/ShapeList;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/ShapeList;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iput-object v2, p1, Lcom/metamoji/nt/share/NtPenStyle;->arrowKinds:Ljava/lang/String;

    goto :goto_5

    .line 247
    :cond_a
    iget-object p1, v9, Lcom/metamoji/ui/dialog/ShapeList;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iput-boolean v7, p1, Lcom/metamoji/nt/share/NtPenStyle;->hasArrow:Z

    .line 248
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeList$2;->this$0:Lcom/metamoji/ui/dialog/ShapeList;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/ShapeList;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iput-boolean v6, p1, Lcom/metamoji/nt/share/NtPenStyle;->hasFill:Z

    .line 251
    :goto_5
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeList$2;->this$0:Lcom/metamoji/ui/dialog/ShapeList;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/ShapeList;->m_context:Lcom/metamoji/cm/CmContext;

    invoke-virtual {p1, v1, v8}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 252
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeList$2;->this$0:Lcom/metamoji/ui/dialog/ShapeList;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/ShapeList;->m_context:Lcom/metamoji/cm/CmContext;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeList$2;->this$0:Lcom/metamoji/ui/dialog/ShapeList;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/ShapeList;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 253
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 255
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/dialog/ShapeList$2$1;

    invoke-direct {v1, p0, p1, v4}, Lcom/metamoji/ui/dialog/ShapeList$2$1;-><init>(Lcom/metamoji/ui/dialog/ShapeList$2;Lcom/metamoji/nt/NtEditorWindowController;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    .line 267
    :cond_b
    throw v5
.end method
